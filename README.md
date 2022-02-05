# AWS Lambda Downloader
The script downloads all lambda functions and extracts them to separate folders. 
Prerequisites: 
* The AWS configuration must be done. 
- The jq tool must be installed

## Usage:
The script downloads lambdas from your default region; if you want to download lambdas from another region, you need to specify the region as an argument.

Example:
```
bash downloader.sh #downloads from default region
bash downloader.sh us-west-2 #downloads from us-west-2 region
```
