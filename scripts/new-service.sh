#! /bin/bash

read -p "서비스 이름을 입력해주세요. 👉 " name
read -r -p "서비스 설명을 입력해주세요. 👉 " description

trimmedDescription="${description// /_}"

npx hygen service new --name $name --description $trimmedDescription
yarn
