global valorETrabajo;
AT2=[-18.0000 -17.9315  -17.7265  -17.3867  -16.9145  -16.3135  -15.5885  -14.7447  -13.7888  -12.7279  -11.5702  -10.3244 -9.0000 -7.6071 -6.1564 -4.6587 -3.1257 -1.5688 0.0000 1.5688 3.1257 4.6587 6.1564 7.6071 9.0000 10.3244 11.5702 12.7279 13.7888 14.7447 15.5885 16.3135 16.9145 17.3867 17.7265 17.9315 18.0000;0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;0.0000 1.5688 3.1257 4.6587 6.1564 7.6071 9.0000 10.3244 11.5702 12.7279 13.7888 14.7447 15.5885 16.3135 16.9145 17.3867 17.7265 17.9315 18.0000 17.9315 17.7265 17.3867 16.9145 16.3135 15.5885 14.7447 13.7888 12.7279 11.5702 10.3244 9.0000 7.6071 6.1564 4.6587 3.1257 1.5688 -0.0000]; AT3=[17.9315   17.7265   17.3867   16.9145   16.3135   15.5885    14.7447   13.7888   12.7279   11.5702   10.3244    9.0000    7.6071    6.1564    4.6587    3.1257    1.5688    0.0000    -1.5688   -3.1257   -4.6587   -6.1564   -7.6071   -9.0000  -10.3244  -11.5702  -12.7279  -13.7888  -14.7447  -15.5885   -16.3135  -16.9145  -17.3867  -17.7265  -17.9315  -18.0000 -18.0000;1.5688    3.1257    4.6587    6.1564    7.6071    9.0000    10.3244   11.5702   12.7279   13.7888   14.7447   15.5885   16.3135   16.9145   17.3867   17.7265   17.9315   18.0000    17.9315   17.7265   17.3867   16.9145   16.3135   15.5885   14.7447   13.7888   12.7279   11.5702   10.3244    9.0000     7.6071    6.1564    4.6587    3.1257    1.5688    0.0000 0;0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000 0]; AT31=[-17.9315  -17.7265  -17.3867  -16.9145  -16.3135  -15.5885   -14.7447  -13.7888  -12.7279  -11.5702  -10.3244   -9.0000   -7.6071   -6.1564   -4.6587   -3.1257   -1.5688   -0.0000     1.5688    3.1257    4.6587    6.1564    7.6071    9.0000   10.3244   11.5702   12.7279   13.7888   14.7447   15.5885    16.3135   16.9145   17.3867   17.7265   17.9315   18.0000;-1.5688   -3.1257   -4.6587   -6.1564   -7.6071   -9.0000   -10.3244  -11.5702  -12.7279  -13.7888  -14.7447  -15.5885  -16.3135  -16.9145  -17.3867  -17.7265  -17.9315  -18.0000   -17.9315  -17.7265  -17.3867  -16.9145  -16.3135  -15.5885  -14.7447  -13.7888  -12.7279  -11.5702  -10.3244   -9.0000    -7.6071   -6.1564   -4.6587   -3.1257   -1.5688   -0.0000; 0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000    0.0000     0.0000    0.0000    0.0000    0.0000    0.0000    0.0000]; AT41=[12.6795   12.5346   12.2942    11.9603   11.5354   11.0227   10.4261    9.7502    9.0000    8.1814    7.3004    6.3640    5.3791    4.3532    3.2942     2.2102    1.1093    0.0000   -1.1093   -2.2102   -3.2942   -4.3532   -5.3791   -6.3640   -7.3004   -8.1814   -9.0000    -9.7502  -10.4261  -11.0227  -11.5354  -11.9603  -12.2942  -12.5346  -12.6795  -12.7279; 1.1093    2.2102    3.2942     4.3532    5.3791    6.3640    7.3004    8.1814    9.0000    9.7502   10.4261   11.0227   11.5354   11.9603   12.2942    12.5346   12.6795   12.7279   12.6795   12.5346   12.2942   11.9603   11.5354   11.0227   10.4261    9.7502    9.0000     8.1814    7.3004    6.3640    5.3791    4.3532    3.2942    2.2102    1.1093    0.0000; 12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279]; AT42=[12.6795   12.5346   12.2942    11.9603   11.5354   11.0227   10.4261    9.7502    9.0000    8.1814    7.3004    6.3640    5.3791    4.3532    3.2942     2.2102    1.1093    0.0000   -1.1093   -2.2102   -3.2942   -4.3532   -5.3791   -6.3640   -7.3004   -8.1814   -9.0000    -9.7502  -10.4261  -11.0227  -11.5354  -11.9603  -12.2942  -12.5346  -12.6795  -12.7279; -1.1093   -2.2102   -3.2942    -4.3532   -5.3791   -6.3640   -7.3004   -8.1814   -9.0000   -9.7502  -10.4261  -11.0227  -11.5354  -11.9603  -12.2942   -12.5346  -12.6795  -12.7279  -12.6795  -12.5346  -12.2942  -11.9603  -11.5354  -11.0227  -10.4261   -9.7502   -9.0000    -8.1814   -7.3004   -6.3640   -5.3791   -4.3532   -3.2942   -2.2102   -1.1093   -0.0000; 12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279    12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279   12.7279]; AT51=[-16.2515  -16.0657  -15.7577  -15.3297  -14.7851  -14.1279  -13.3633  -12.4969  -11.5354  -10.4861   -9.3571    -8.1568   -6.8944   -5.5796   -4.2223   -2.8328   -1.4218   -0.0000    1.4218    2.8328    4.2223    5.5796    6.8944     8.1568    9.3571   10.4861   11.5354   12.4969   13.3633   14.1279   14.7851   15.3297   15.7577   16.0657   16.2515    16.3135; 1.4218    2.8328    4.2223    5.5796    6.8944    8.1568    9.3571   10.4861   11.5354   12.4969   13.3633    14.1279   14.7851   15.3297   15.7577   16.0657   16.2515   16.3135   16.2515   16.0657   15.7577   15.3297   14.7851    14.1279   13.3633   12.4969   11.5354   10.4861    9.3571    8.1568    6.8944    5.5796    4.2223    2.8328    1.4218    0.0000; 7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071]; AT52=[-16.2515  -16.0657  -15.7577  -15.3297  -14.7851  -14.1279  -13.3633  -12.4969  -11.5354  -10.4861   -9.3571    -8.1568   -6.8944   -5.5796   -4.2223   -2.8328   -1.4218   -0.0000    1.4218    2.8328    4.2223    5.5796    6.8944     8.1568    9.3571   10.4861   11.5354   12.4969   13.3633   14.1279   14.7851   15.3297   15.7577   16.0657   16.2515    16.3135; -1.4218   -2.8328   -4.2223   -5.5796   -6.8944   -8.1568   -9.3571  -10.4861  -11.5354  -12.4969  -13.3633   -14.1279  -14.7851  -15.3297  -15.7577  -16.0657  -16.2515  -16.3135  -16.2515  -16.0657  -15.7577  -15.3297  -14.7851   -14.1279  -13.3633  -12.4969  -11.5354  -10.4861   -9.3571   -8.1568   -6.8944   -5.5796   -4.2223   -2.8328   -1.4218   -0.0000; 7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071    7.6071     7.6071]; AT61=[-17.6591  -17.4572  -17.1225  -16.6575  -16.0657  -15.3516  -14.5207  -13.5793   -12.5346  -11.3944  -10.1675   -8.8633   -7.4916   -6.0628   -4.5880   -3.0782   -1.5450   -0.0000    1.5450    3.0782     4.5880    6.0628    7.4916    8.8633   10.1675   11.3944   12.5346   13.5793   14.5207   15.3516   16.0657   16.6575    17.1225   17.4572   17.6591   17.7265; 1.5450    3.0782    4.5880    6.0628    7.4916    8.8633   10.1675   11.3944    12.5346   13.5793   14.5207   15.3516   16.0657   16.6575   17.1225   17.4572   17.6591   17.7265   17.6591   17.4572    17.1225   16.6575   16.0657   15.3516   14.5207   13.5793   12.5346   11.3944   10.1675    8.8633    7.4916    6.0628     4.5880    3.0782    1.5450    0.0000; 3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257]; AT62=[-17.6591  -17.4572  -17.1225  -16.6575  -16.0657  -15.3516   -14.5207  -13.5793  -12.5346  -11.3944  -10.1675   -8.8633   -7.4916   -6.0628   -4.5880   -3.0782   -1.5450   -0.0000     1.5450    3.0782    4.5880    6.0628    7.4916    8.8633   10.1675   11.3944   12.5346   13.5793   14.5207   15.3516    16.0657   16.6575   17.1225   17.4572   17.6591   17.7265; -1.5450   -3.0782   -4.5880   -6.0628   -7.4916   -8.8633   -10.1675  -11.3944  -12.5346  -13.5793  -14.5207  -15.3516  -16.0657  -16.6575  -17.1225  -17.4572  -17.6591  -17.7265   -17.6591  -17.4572  -17.1225  -16.6575  -16.0657  -15.3516  -14.5207  -13.5793  -12.5346  -11.3944  -10.1675   -8.8633   -7.4916   -6.0628   -4.5880   -3.0782   -1.5450   -0.0000; 3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257    3.1257     3.1257    3.1257    3.1257    3.1257    3.1257    3.1257]; AT71=[-4.6410   -4.5880   -4.5000   -4.3778   -4.2223   -4.0346   -3.8162   -3.5688   -3.2942    -2.9946   -2.6721   -2.3294   -1.9689   -1.5934   -1.2058   -0.8090   -0.4060   -0.0000    0.4060    0.8090    1.2058     1.5934    1.9689    2.3294    2.6721    2.9946    3.2942    3.5688    3.8162    4.0346    4.2223    4.3778    4.5000     4.5880    4.6410    4.6587;0.4060    0.8090    1.2058    1.5934    1.9689    2.3294    2.6721    2.9946    3.2942     3.5688    3.8162    4.0346    4.2223    4.3778    4.5000    4.5880    4.6410    4.6587    4.6410    4.5880    4.5000     4.3778    4.2223    4.0346    3.8162    3.5688    3.2942    2.9946    2.6721    2.3294    1.9689    1.5934    1.2058     0.8090    0.4060    0.0000; 17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867]; AT72=[-4.6410   -4.5880   -4.5000   -4.3778   -4.2223    -4.0346   -3.8162   -3.5688   -3.2942   -2.9946   -2.6721   -2.3294   -1.9689   -1.5934   -1.2058   -0.8090   -0.4060    -0.0000    0.4060    0.8090    1.2058    1.5934    1.9689    2.3294    2.6721    2.9946    3.2942    3.5688    3.8162     4.0346    4.2223    4.3778    4.5000    4.5880    4.6410    4.6587;-0.4060   -0.8090   -1.2058   -1.5934   -1.9689    -2.3294   -2.6721   -2.9946   -3.2942   -3.5688   -3.8162   -4.0346   -4.2223   -4.3778   -4.5000   -4.5880   -4.6410    -4.6587   -4.6410   -4.5880   -4.5000   -4.3778   -4.2223   -4.0346   -3.8162   -3.5688   -3.2942   -2.9946   -2.6721    -2.3294   -1.9689   -1.5934   -1.2058   -0.8090   -0.4060   -0.0000; 17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867    17.3867   17.3867   17.3867   17.3867   17.3867   17.3867   17.3867];

if valorETrabajo==1    
    for j=1:36
        plot3(AT3(1,j),AT3(2,j),AT3(3,j),'blacko')
        plot3(AT31(1,j),AT31(2,j),AT31(3,j),'blacko')
        plot3(AT41(1,j),AT41(2,j),AT41(3,j),'blacko')
        plot3(AT42(1,j),AT42(2,j),AT42(3,j),'blacko')
        plot3(AT51(1,j),AT51(2,j),AT51(3,j),'blacko')
        plot3(AT52(1,j),AT52(2,j),AT52(3,j),'blacko')
        plot3(AT61(1,j),AT61(2,j),AT61(3,j),'blacko')
        plot3(AT62(1,j),AT62(2,j),AT62(3,j),'blacko')
        plot3(AT71(1,j),AT71(2,j),AT71(3,j),'blacko')
        plot3(AT72(1,j),AT72(2,j),AT72(3,j),'blacko')
        hold on
    end    
else
end