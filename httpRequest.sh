echo enter your url:
read url 
echo POST/GET ?
read type
echo enter your params like key=value
if [[ $type == "POST"  ]]; then
	params=$(python3.8 params.py)
	curl -X POST -d $params $url
fi
if [[ $type == "GET" ]]; then
	params=$(python3.8 params.py)
	if [[ $params == "" ]]; then
		curl -X GET $url
	
	else	
		curl -X GET -d $params $url
	fi
fi

