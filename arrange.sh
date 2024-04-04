#!/bin/bash

for file in ./files/*; do
  if [[ -d $file ]]; then
    continue
  fi

  first_letter=$(basename "$file")
  first_letter=${first_letter:0:1}
  first_letter=${first_letter,,}

  target_dir="./$first_letter"
  
  mv "$file" "$target_dir/"
done