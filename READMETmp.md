# Icalia Linguist Engine

[Github Linguist](https://github.com/github/linguist) as an Engine for project feature detection.

## Running the app

In your git project - *IT MUST BE A GIT PROJECT* - folder, run the following command:

```
docker run --rm -v $(pwd):/code icalialabs/feature-detect-linguist
```


```json
[{
  "type": "feature",
  "name": "Ruby",
  "description": "The application uses Ruby code",
  "content": Content,
  "categories": ["Language"],
  "cue_locations": [all_files_from_ruby],
  "engines": ["github-linguist"],
  "meta": {
    "ratio": 0.5
    "total_files": 50
  }
},
{
  "type": "feature",
  "name": "CoffeeScript",
  "description": "The application uses Coffee",
  "content": Content,
  "categories": ["Language"],
  "cue_locations": [Location],
  "engines": ["github-linguist", "beluga-coffee"]
}
]
```
