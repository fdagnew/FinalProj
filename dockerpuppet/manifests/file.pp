class dockerpuppet::file {
 file {'/home/ubuntu/FinalProj/website/':
 ensure => present,
 mode => '0777',
 source => "puppet:///modules/dockerpuppet/website"
 }
 file {'/home/ubuntu/Dockerfile':
 ensure => present,
  mode => '0777',
source => "puppet:///modules/dockerpuppet/Dockerfile"
 }
 exec {'build_dockerfile':
 command => "/usr/bin/docker build -t ubuntu/new  '/home/ubuntu/'"
 }
 exec {'run_docker':
 command => "/usr/bin/docker run -it -d -p 8091:8080 ubuntu/new"
 }
}
