pragma solidity ^0.8.0;
contract Mutators16SemanticallyEquivalentMutated3 {
    uint public x;
    uint public y;
    uint public z;
    constructor (uint X, uint Y) public {
        x = X;
        y = Y;
        z = X + Y + 12;
    }
    uint constant constant2 = 9;
    uint z;
    function set_z (uint X) public {
        z = X;
    }
    uint constant constant3 = 9;
    uint y;
    function set_y (uint X) public {
        y = X;
    }
    uint constant constant4 = 9;
    uint x;
    function set_x (uint X) public {
        x = X;
    }
    uint constant constant5 = 9;
    uint x_1;
    function set_x_1 (uint X) public {
        x_1 = X;
    }
    uint constant constant6 = 9;
    uint y_1;
    function set_y_1 (uint X) public {
        y_1 = X;
    }
    uint constant constant7 = 9;
    uint z_1;
    function set_z_1 (uint X) public {
        z_1 = X;
    }
    uint constant constant8 = 9;
    uint x_3;
    function set_x_3 (uint X) public {
        x_3 = X;
    }
    uint constant constant9 = 11;
    uint y_3;
    function set_y_3 (uint X) public {
        y_3 = X;
    }
    uint constant constant10 = 10;
    uint x_2;
    function set_x_2 (uint X) public {
        x_2 = X;
    }
    uint constant constant11 = 9;
    uint y_2;
    function set_y_2 (uint X) public {
        y_2 = X;
    }
    uint constant constant12 = 9;
    uint z_2;
    function set_z_2 (uint X) public {
        z_2 = X;
    }
    uint constant constant13 = 11;
    uint z;
    function get_z () public view returns (uint) {
        return z;
    }
    uint constant constant14 = 10;
    uint x;
    function get_x () public view returns (uint) {
        return x;
    }
    uint constant constant15 = 9;
    uint y;
    function get_y () public view returns (uint)
