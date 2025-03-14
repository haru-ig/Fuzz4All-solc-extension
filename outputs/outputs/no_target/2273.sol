pragma solidity ^0.8.0;
contract mutation2e05 {
    uint public c = 0;
    function m() public {
        c += 0.000001e05;
    }
}










pragma solidity ^0.8.0;
contract mutation3e05 {
    uint public a = 100;
    uint public b = 0.475;
    uint public c = a*a*475 + 100;
    function m() public {
        a = a*75 + 0.25;
    }
}
