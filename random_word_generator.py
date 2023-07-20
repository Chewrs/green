#!/usr/bin/env python3
import random
import requests
import json
def generate_random_word():
    category = 'happiness'
    api_url = 'https://api.api-ninjas.com/v1/quotes?category={}'.format(category)
    response = requests.get(api_url, headers={'X-Api-Key': 'vk47EpqwD07BnO+nL8O4Gg==CoPeTzJTrksmlvHq'})
    if response.status_code == requests.codes.ok:
        return response.text
    else:
        return "Error:", response.status_code, response.text



'''def generate_random_word():
    words = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon"]
    return random.choice(words)
'''
if __name__ == "__main__":
    print(generate_random_word())
