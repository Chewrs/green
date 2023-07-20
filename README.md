# GitHub Green Dots Generator

## Overview

This GitHub repository serves as a simple automation tool to ensure that my GitHub contributions graph remains green, with a green dot showing up for each day. It is intended for personal use and was created as a fun project to keep my GitHub activity graph aesthetically pleasing.

## How it Works

The core of the project is a shell script named `daily_commit.sh` that automates the process of making daily commits to this repository. The script generates a random word using a Python script, appends the word to the "daily_commit.txt" file, and then commits the change to the repository. This process is scheduled to run daily using an external automation tool (e.g., Cron or GitHub Actions).

## Motivation

GitHub's contributions graph visualizes users' daily activity on the platform, represented by green dots on the user's profile. Keeping the graph green is a simple motivation to remain consistently active on GitHub. The idea behind this project is not about the content of the commits but rather to have a daily green dot, even if the commits have no meaningful impact on the repository.

## Usage

The `daily_commit.sh` script can be executed manually from the command line, but it is designed to be scheduled to run automatically once per day. For this purpose, you can use Cron on a local machine or leverage GitHub Actions to run the script within the repository.

### Manual Execution

To manually execute the script:

1. Clone this repository to your local machine.
2. Make sure you have the necessary permissions to execute shell scripts. If not, set the execute permission with the command: `chmod +x daily_commit.sh`.
3. Run the script: `./daily_commit.sh`.

### Automation with GitHub Actions

If you prefer an automated approach using GitHub Actions:

1. Fork this repository to your GitHub account.
2. Navigate to the "Actions" tab in your forked repository.
3. Enable GitHub Actions (if it's not already enabled).
4. Edit the workflow file (`.github/workflows/daily_commit.yml`) to schedule the action as needed.

## Disclaimer

This project is purely for personal use and has no practical value beyond maintaining a green contributions graph. The commits made by the automation tool may not have any meaningful impact on the project or the content of the repository. The primary goal of this project is to keep the daily contributions graph aesthetically pleasing and should not be considered as genuine development activity.

Feel free to use, modify, or adapt this project for your own purposes, and enjoy the evergreen GitHub contributions graph!
