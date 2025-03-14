pragma solidity ^0.8.0;
contract Test7BD0 {
    uint256[] x;
    uint256 y;
    function f_(uint256 x_) public pure {
        uint256[] memory a = new uint256[](5);
        a[1] = x_ + 1;
        a[4] = x;
        a[2] = 10;
        a[0] = 1;
        y = a.length;
        Test7BD0.f_(x_);
    }
}
contract Test6CDB {
    uint256[] x;
    uint256 y;
    function f_(uint256 x_) public pure {
        uint256[] memory a = new uint256[](5);
        a[2] = x_ + 1;
        a[4] = x;
        a[3] = 10;
        a[1] = 1;
        a[0] = 1;
        y = a.length;
        Test6CDB.f_(x_);
    }
}
contract Test577D {
    uint256[] x;
    uint256 y;
    function f_(uint256 x_) public pure {
        uint256[] memory a = new uint256[](5);
        a[2] = x;
        a[3] = 10;
        a[4] = x_;
        a[0] = 1;
        a[1] = 1;
        y = a.length;
        Test577D.f_(x_);
    }
}
contract Test6919 {
    uint256[] x;
    uint256 y;
    function f_(uint256 x_) public pure {
        uint256[] memory a = new uint256[](5);
        a[3] = x_;
        a[4] = x_ + 1;
        a[1] = 1;
        a[2] = 10;
        a[0] = 1;
        y = a.length;
        Test6919.f_(x_);
    }
}
contract Test94C0 {
    uint256[] x;
    uint256 y;
    function f_(uint256 x_) public pure {
        uint256[] memory a = new uint256[](5);
        a[3] = x_;
        a[4] = x_ + 1;
        a
