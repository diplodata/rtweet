% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lists_statuses.R
\name{lists_statuses}
\alias{lists_statuses}
\title{Get a timeline of tweets authored by members of a specified list.}
\usage{
lists_statuses(list_id = NULL, slug = NULL, owner_user = NULL,
  since_id = NULL, max_id = NULL, n = 200, include_rts = TRUE,
  parse = TRUE, token = NULL)
}
\arguments{
\item{list_id}{required The numerical id of the list.}

\item{slug}{required You can identify a list by its slug instead of
its numerical id. If you decide to do so, note that you'll also have
to specify the list owner using the owner_id or owner_screen_name
parameters.}

\item{owner_user}{optional The screen name or user ID of the user
who owns the list being requested by a slug.}

\item{since_id}{optional Returns results with an ID greater than
(that is, more recent than) the specified ID. There are limits to the
number of Tweets which can be accessed through the API. If the limit
of Tweets has occurred since the since_id, the since_id will be forced
to the oldest ID available.}

\item{max_id}{optional Returns results with an ID less than (that is,
older than) or equal to the specified ID.}

\item{n}{optional Specifies the number of results to retrieve per "page."}

\item{include_rts}{optional When set to either true, t or 1,
the list timeline will contain native retweets (if they exist) in
addition to the standard stream of tweets. The output format of
retweeted tweets is identical to the representation you see in
home_timeline.}

\item{parse}{Logical indicating whether to convert the response object into
an R list. Defaults to TRUE.}

\item{token}{OAuth token. By default \code{token = NULL} fetches a
non-exhausted token from an environment variable. Find
instructions on how to create tokens and setup an environment
variable in the tokens vignette (in r, send \code{?tokens} to
console).}
}
\value{
data
}
\description{
Get a timeline of tweets authored by members of a specified list.
}
\seealso{
Other lists: \code{\link{lists_members}},
  \code{\link{lists_subscribers}},
  \code{\link{lists_users}}

Other tweets: \code{\link{get_favorites}},
  \code{\link{get_mentions}},
  \code{\link{get_my_timeline}},
  \code{\link{get_timeline}},
  \code{\link{lookup_statuses}},
  \code{\link{search_tweets}}, \code{\link{tweets_data}},
  \code{\link{tweets_with_users}}
}
\concept{lists}
\concept{tweets}
