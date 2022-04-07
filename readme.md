## 쿠버네티스 클러스터에서 mysql 접속하는 법

kubectl run -it --rm --image=mysql:latest --restart=Never mysql-client -- mysql -u admin  -h anchor-db.c153bppahloq.ap-northeast-2.rds.amazonaws.com -panchoradmin 
