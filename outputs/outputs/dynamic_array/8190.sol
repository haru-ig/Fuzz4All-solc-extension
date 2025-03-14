pragma solidity ^0.8.0;
contract EvmMutatedFabric {
    uint [] public x;
    uint public y;
    uint public z;
    void set_x(uint _x) public {
        x.push(_x);
    }
    function x_length() public view returns (uint) {
        return x.length;
    }
    function x_concat() public view returns (uint[] memory) {
        x_length();
        uint[] memory new_x = new uint[](x.length + 1);
        for (uint i=0; i < x.length; i++) {
        new_x[i] = x[i];
        }
        new_x[x.length] = _x;
        return new_x;
    }
    function y_concat() public view returns (uint[] memory) {
        y_length();
        uint[] memory new_y = new uint[](y.length + 1);
        for (uint i=0; i < y.length; i++) {
        new_y[i] = y[i];
        }
        new_y[y.length] = _y;
        return new_y;
    }
    function y_length() public view returns (uint) {
        return y.length;
    }
    function z_concat() public view returns (uint[] memory) {
        z_length();
        uint[] memory new_z = new uint[](z.length + 1);
        for (uint i=0; i < z.length; i++) {
        new_z[i] = z[i];
        }
        new_z[z.length] = _z;
        return new_z;
    }
    function z_length() public view returns (uint) {
        return z.length;
    }
}
