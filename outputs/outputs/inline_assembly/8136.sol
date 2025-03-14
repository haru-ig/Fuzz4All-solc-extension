pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public totalprice;
    uint256 public numdrinks;
    uint256 totalprice_original;
    uint256 numdrinks_original;

    constructor (uint numdrinks, uint _finalprice)
    public {
        numdrinks = numdrinks;
        totalprice = 3 * 10 ** 18;
        numdrinks++;
        totalprice += 1 * 10 ** 18;
        numdrinks += 0;
        totalprice += 3 * 10 ** 18;
    }
    function addDrink() public {
        numdrinks ++ ;
        totalprice += 1 * 10 ** 18;
        numdrinks++;
        totalprice += 1 * 10 ** 18;
        numdrinks += 0;
        totalprice += 1 * 10 ** 18;
    }
    function finalize() public {
        numdrinks_original = numdrinks;
        totalprice_original = totalprice;
        numdrinks =
