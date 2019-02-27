# expects only one running docker container

push_docker(){
  id=$(docker ps | awk '{if(NR>1)print}' | cut -d ' ' -f 1)
  # docker cp <file> <containerID>:/<location>
  docker cp $1 $id:/root
}

pop_docker(){
  id=$(docker ps | awk '{if(NR>1)print}' | cut -d ' ' -f 1)

  # docker cpi <containerID>:/<location> .
  docker cp $id:/$1 .
}

connect_docker(){
  id=$(docker ps | awk '{if(NR>1)print}' | cut -d ' ' -f 1)
  docker exec -it $id /bin/zsh
}

start_docker(){
  docker run -it $1 /bin/zsh
}

build_docker(){
  docker build -t $1 .
}

