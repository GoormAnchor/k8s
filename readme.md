## 쿠버네티스 클러스터에서 mysql 접속하는 법

kubectl run -it --rm --image=mysql:latest --restart=Never mysql-client -- mysql -u admin  -h anchor-db.c153bppahloq.ap-northeast-2.rds.amazonaws.com -panchoradmin 

### spring boot api를 쿠버네티스로 deployment 해보기
- 로드 밸런서 : node-svc.ymal
출처: https://wedul.site/631 [wedul]
