pragma solidity ^0.8.0;
contract mutation0b72m2
{
    constructor() {}
}

pragma solidity ^0.8.0;
contract mutation0b80m2
{
    constructor() public {}
    function func() public
    {
        assert(1 <= 2);
        contract mutation0b80m1 = new mutation0b80m2();
    }
}

pragma solidity ^0.8.0;
contract mutation0b80m1
{
    uint public counter = 0;
    constructor() public {counter++;}
    function func() public
    {
        assert((1 <= 2) && ((3!= 3) || (counter!= 4)));
        counter++;
        assert(counter == 8);
        counter++;
        assert(counter == 10);
    }
}
contract mutation_0b80m3_
{
    function func(uint) public { assert(1.0 < 2.0 || true); }
    function func(int) public { assert(1.0 > 2.0 || true); }
    function func(uint8) public { assert(1.0 == 2.0 || true); }
    function func(uint256) public { assert(1.0 >= 2.0 || true); }
    function func(uint32) public { assert(1.0 > 2.0 || true); }
    function func(uint64) public { assert(1.0 < 2.0 || true); }
    function func(address[] memory)public{ assert(true); }
    function func(bytes memory)public{ assert(true); }
    function func(bytes1)public{ assert(true); }
    function func(bytes4)public{ assert(true); }
    function func(bytes5)public{ assert(true); }
