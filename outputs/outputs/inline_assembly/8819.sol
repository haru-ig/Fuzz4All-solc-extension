pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**256-1;

    uint256 x = 10000;
    uint256 x_copy;

    uint y = 10000;
    uint y_copy;

    function copy(address payable x1, uint x2) external {
        x_copy = x1.balance;
        if (x2 < x) {
            uint new_total_supply = x1.totalSupply();
            uint x_copy_new_total_supply = payable(x1).balance;
            (y_copy, _) = div(x_copy_new_total_supply, x2);
            x1.transfer(y_copy);
        } else {
            uint x_copy_new_total_supply = payable(x1).balance;
            (y_copy, _) = div(x_copy_new_total_supply, x2);
            x_copy_new_total_supply = y_copy * x2;
            x1.transfer(x_copy_new_total_supply);
        }
    }

    function div(uint x, uint y) public pure returns (uint x_copy_new_total_supply, uint y_copy)
    {
        require(y > 0, "zero");

        return (x*y + (((x>int_max)? int_max : x)-x)*y/x_copy_new_total_supply,(y>int_max)? int_max : 1);
    }
}
