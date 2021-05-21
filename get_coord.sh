BEGIN{
N = 640
k = 50000
c = 0
kflag=0;
}
{

	if ((kflag==1)){
                if (c > 7){
                    print $0
                }
                if (c == 0){
                    print $1
                }
                c+=1
        }
        if ((c==N+8)){
                c=0
                kflag=0
                print "420"
        }
        if ($2 == "TIMESTEP"){

                kflag=1
        }
}
END{
print ""
}
