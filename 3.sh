# a million commits
for j in {001..3}
do
    Y=$((2018+$(($RANDOM % 1))))
    startm=7
    endm=7
    startd=23
    endd=23
    M=$(($startm+$RANDOM%($endm-$startm+1)))
    #D=$(($RANDOM%31+1))
    D=$(($startd+$RANDOM%($endd-$startd+1)))
    
    bugcnt=$(($RANDOM%15+1))
    echo "$bugcnt"
    #echo "added @angular/flex-layout dependency on $M/$D/$Y"
    echo "added @angular/flex-layout dependency on $M/$D/$Y" > commit.md
    tt=$(($RANDOM % 12))
    mm=$(($RANDOM % 60))
    ss=$(($RANDOM % 60))
    export GIT_COMMITTER_DATE="$Y-$M-$D $tt:$mm:$ss"
    echo "$Y-$M-$D $tt:$mm:$ss"
    export GIT_AUTHOR_DATE="$Y-$M-$D $tt:$mm:$ss"
    git add commit.md -f
    git commit --date="$Y-$M-$D $tt:$mm:$ss" -m "added @angular/flex-layout dependency on $M/$D/$Y"
done
git push origin master --force
git rm -rf 20**
git rm -rf 19**
git rm -rf 18**
git rm -rf 17**
git rm -rf 16**
git rm -rf 15**
git commit -am "cleanup"
git push origin master --force
#echo 2019 1.9 ~ 4.10