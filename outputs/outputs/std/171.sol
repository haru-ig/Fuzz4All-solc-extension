pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] array;

    function set(uint x, uint y) public {
        array.push(x);
        array.push(y);
    }

    function get(uint x) public view returns (uint y) {
        y = array[x];
    }

    function mint_if_bigger(uint256 x, uint[] memory a, uint[] memory b) public returns (uint) {
        if (x < a.length) {
            require(b[x] <= a[x]);
        }
        uint x_to_y;
        for (uint i = 0; i < a.length; i += 1) {
            var x_i = a[i];
            var y = b[i];
            if (x_i >= y) {
                x_to_y += y - x_i;
            }
        }
        return x_to_y;
    }
}
