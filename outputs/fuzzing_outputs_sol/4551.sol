pragma solidity ^0.8.0;
contract SemanticDifferent4 is SemanticDifferent5 {
    uint40 public x;
    uint40 public y;

    function init(uint40 x_, uint40 y_) public {
        x = x_;
        y = y_;
    }
    receive () external payable {
        require (msg.value > 0);
        x *= (msg.value);
        y -= (msg.value);
    }

    function mutate() public pure {

        call();

        call();
    }
    function call() public pure {

        x *= 2;
        y /= (2 + x);
    }
    function check(uint40 _x) public view returns (uint40 _y, uint40 _z) {
        return (x, y);
    }
}
contract SemanticDifferent3 is SemanticDifferent4 {
    uint40 public z;

    function init(uint40 x_, uint40 y_, uint40 z_) public {
        init(x_, y_);
        z = z_;
    }
    receive () external payable {
        return;
    }
    fallthrough;
    function fallback() external payable {
    }
    function check(uint40 _x) public view returns (uint40 _y, uint40 _z) {
        return (x, y);
    }
    function mutate() public pure {

        call();

        call();


        call();
    }
}
contract SemanticDifferent2 is SemanticDifferent3 {
    constructor () public {
    }
    receive () external payable {
        revert(1);
    }
    fallback() external payable {
    }
}
