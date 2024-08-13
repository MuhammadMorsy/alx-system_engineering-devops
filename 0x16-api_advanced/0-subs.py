#!/usr/bin/python3
"""
How many subs? module
that module Create a program that uses the Reddit API
to retrieve the number of subscribers.
"""


import requests


def number_of_subscribers(subreddit):
    """
    function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
    If an invalid subreddit is given, the function should return 0.
    """

    api_url = "https://www.reddit.com/r/"

    url = '{}{}/about.json'.format(api_url, subreddit)

    headers = {"User-Agent": "0x16-api_advanced:project:\
v1.0.0 (by /u/firdaus_cartoon_jr)"}

    res = requests.get(
        url,
        headers=headers,
        allow_redirects=False
    )
    if res.status_code == 200:
        return results.json()['data']['subscribers']
    return 0
