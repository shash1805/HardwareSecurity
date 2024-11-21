clc
clear all
i=input('Enter the number of input bits')
m=0;
j=0;
n=2^i;
for(x=0:n-1)
    t=x*(2^2);
    k=dec2bin(t,i);
    l=length(k);
%     disp(k)
    if(l==i)
        t=t;
    else
        if(l>i)
            t=t-((n-1)*(m+1));
            j=j+1;
            if(j>=(2^(i-2)))
                m=m+1;
                j=0;
            end
        else
            t=t;
        end
    end
    if(t==0)
        t=n-1;
    else
        if(t==n-1)
            t=0;
        else
            t=t;
        end
    end
    bin=dec2bin(t,i);
    disp(bin)
end


