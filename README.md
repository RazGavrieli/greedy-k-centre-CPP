# greedy-k-centre-CPP

![image](https://user-images.githubusercontent.com/90526270/173198611-06af8a30-24b7-44b1-a7f3-0ca39784dbc5.png)

## INTRODUCTION
Simple project that implements a graph using CPP, and a greedy algorithm to approximate the location of K centroids in the graph. <br>
The algorithm attempts to minimize the maximum distance to the set 'centers' for each node in the graph. <br>
To run the algorithm simply clone the repository to your machine and run 'make', './main'. <br>
<br>
## THE ALGORITHM IS 2-APPROX.
(proof by _Gonzalez_[Theoretical
Computer Science]) <br>

##### Annotations: <br>
We will denote S* as the optimal solution. (A set with K centroids) <br>
We will denote S as the solution chosen by the greedy algorithm. <br>
For a vertex x and a group A we will denote the minimum distance between x and one of the vertices in A as r* = d(x, S*). 
r = d(x, S). <br>

##### We will show that r <= 2r* 
Let us observe two arbitrary vertices that share the same centriod, i and j and they share s. The distance between them is less then 2r*: <br>
$$ d(i,j) <= d(i, s) + d(s, j) <= r* + r* = 2r* $$ <br>

Consider the first iteration of the greedy algorithm where it chosen a vertex i even though it has already chosen a vertex i' s.t in the optimal solution they share the same cluster. <br>
Up until that point, suppose each iteration chosen a vertex that is in another cluster. <br>
So, for every vertex j, the following argument holds: 
$$ d(j, S) <= d(i, i') $$
Otherwise j would have been added before i' (greedy choice) <br>
<br> 
Recall that for each two vertices i, j that share the same centroids d(i, j) <= 2r*. Implying that d(i, i') <= 2r*. <br>
Therefore, for all the vertices added after i' the distance between the new vertex and the closest cluster is also bounded by 2r*. <br>

We can conclude that:
$$ r* <= r <= 2r* $$



