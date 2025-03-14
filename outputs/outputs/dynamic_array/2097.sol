pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8{
    uint[] public a;
    uint[][] public d;
    uint[] i;
    uint[] j;
    uint x;
    constructor(uint[] memory _a, uint[][] memory _d) public {
        a = _a;
        d = _d;
        i = new uint[](d.length);
        x = 0;
    }
    function goo() internal returns(uint) {
        if (i[x-1] > 0)
            return a[i[x-1] - 1] + (d[i[x-1]][x-1] + goo());
        else
            return x + goo();
    }
    function get() internal {
        require(a.length > 0);
        require(d.length > 0);
        uint[] memory v = d[0];
        for(uint i = 0; i < v.length; i++) {
            i[v[i]] = 1;
        }
        require(a[0] < i[x+1]);
        require(a[0] < d[x][0]);
        require(a[0] == a[i[x+1] - 1]);
        require(x < d[0].length);
        j = new uint[](1);
        j = get(1, v, x++);
        require(x < d[0].length);
        require(j.length == 1);
        i[x-1] = 0;
        require(d[x][0] == i[x+1]);
        d[x][0] = a[a[i[x+1] - 1]-1];
        i[x+1]++;
    }
    function get(uint k, uint[] memory v, uint x) internal returns(uint[]) {
        require(v[k] > x);
        if (i[x - i[x]] >= v[k]+
