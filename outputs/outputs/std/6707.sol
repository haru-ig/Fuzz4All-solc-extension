pragma solidity ^0.8.0;
contract Mutate57 {
    uint[] private x_;
    contract Inner {
        function get1(uint z) public view returns ( uint ) {
            return x_[z];
        }
        function add(uint w) public {
            x_[z_] += w;
        }
        function set(uint w) public {
            z_ = w;
        }
        function set2(uint w, uint[10] memory x) public {
            x_[z_] += w;
            x_[3] = x[4];
            x_[2] = x[3];
            x_[4] = w;
        }
        function set3(uint w) public {
            z_ = w;
            x_[12] = w;
        }
    }
    constructor(uint z) public {}
    function getX() public view returns ( uint[] memory ) {
            return x_;
    }
    function add(uint w) public {
        x_[z_] += w;
    }
    function set(uint w) public {
        z_ = w;
    }
    function set2(uint w, uint[10] memory x) public {
        x_[z_] += w;
        x_[3] = x[4];
        x_[2] = x[3];
        x_[4] = w;
    }
    function set3(uint w) public {
        z_ = w;
        x_[12] = w;
    }
}
