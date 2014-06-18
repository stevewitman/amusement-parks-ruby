# Indexing

You work for a very tourism agency, and your job is to promote amusement parks.  You have been given a list of amusement
parks and you need to write code to help organize the data.

Your mission, should you choose to accept it, is to group amusement parks by
* ID
* Country
* Country / State

## Challenge 1 - Indexing by ID

You need to provide a way to get extremely fast access to amusement parks by their ID.

So given the following array:

```ruby
[
  {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
   }
 ]
```

Your code should produce the following hash:

```ruby
{
  546 => {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  547 => {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
   }
}
```
## Challenge 2 - Indexing by Country

So given the following array:

```ruby
[
  {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
   },
  {
    :id=>2,
    :name=>"Calaway Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  }
]
```

Your code should produce the following hash:

```ruby
{
  "Canada" => [
    {
      :id=>2,
      :name=>"Calaway Park",
      :city=>"Calgary",
      :state=>"Alberta",
      :country=>"Canada"
    }
  ],
  "United States" => [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
     }
  ]
}
```

## Challenge 3 - Indexing by Country and State

Given the following array:

```ruby
[
  {
    :id=>3,
    :name=>"Galaxyland",
    :city=>"Edmonton",
    :state=>"Alberta",
    :country=>"Canada"
  },
  {
    :id=>4,
    :name=>"Heratage Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  },
  {
    :id=>6,
    :name=>"Playland (Vancouver)",
    :city=>"Vancouver",
    :state=>"British Columbia",
    :country=>"Canada"
  },
  {
    :id=>8,
    :name=>"Crystal Palace Amusement Park",
    :city=>"Dieppe",
    :state=>"New Brunswick",
    :country=>"Canada"
  }
]
```

Your code should return the following hash:

```ruby
{
  "Alberta, Canada" => [
    {
      :id => 3,
      :name => "Galaxyland",
      :city => "Edmonton",
      :state => "Alberta",
      :country => "Canada"
    },
    {
      :id => 4,
      :name => "Heratage Park",
      :city => "Calgary",
      :state => "Alberta",
      :country => "Canada"
    },
  ],
  "British Columbia, Canada" => [
    {
      :id => 6,
      :name => "Playland (Vancouver)",
      :city => "Vancouver",
      :state => "British Columbia",
      :country => "Canada"
    },
  ],
  "New Brunswick, Canada" => [
    {
      :id => 8,
      :name => "Crystal Palace Amusement Park",
      :city => "Dieppe",
      :state => "New Brunswick",
      :country => "Canada"
    }
  ]
}
```

## Challenge #4 - Run your code against the YML file

Run your code against the data in `data/amusement_parks.yml`.

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/THIS-REPO.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
