pragma solidity ^0.8.0;
contract m04 {
    uint256 constant public E = E;
    uint256 constant public K = K;
    uint256 constant public IV = IV;
    uint256 constant public N = N;
    uint256 constant public S = S;
    uint256 constant public V = V;
}




contract c00 {
    m03 contract m03 = new m03();
    uint256 public x = m03.E; uint256 public y = m03.K; uint256 public z = m03.IV;

    m04 contract m04 = new m04();
    uint256 public w = m04.E; uint256 public v = m04.K; uint256 public u = m04.IV;
    uint256 public t = m04.N; uint256 public b = m04.S; uint256 public a = m04.V;
}
