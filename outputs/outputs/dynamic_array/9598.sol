pragma solidity ^0.8.0;
 contract Main {
    uint[] memory a;

    function a(uint t) public {
        a[t] = t + 1;
    }

    function b() public {
        uint memory n1 = a.length;
        a.push(0);
        Main2 m;
        m.a(1);
        require(a.length == n1 + 1);

        Main2[] memory a;
        a.length = 0;
        a.push();
        a.push().a(0);
        a[1].a(1);
        require(a.length == 1);
    }
}
