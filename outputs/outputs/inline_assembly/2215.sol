pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    uint public d;
    constructor() {d = 43;}
    function doIt() public returns (uint) { return 12 * d; }
}

pragma solidity ^0.8.0;
contract NewVersionOfSame
{

    constructor() public {
        d = 43;
    }


    function doIt() public returns (uint) { return doIt2; }

    function doIt2() public returns (uint) { return 12 * d; }
}

pragma solidity >=0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
contract Test049
{
    using SafeMath for uint;

    uint public x;
    uint public z;
    uint public gasUsedBefore;

    constructor(uint a, uint b) { x = a; }

    fallback() external {}

    function gasUsed() public view returns (uint) {
        return gasUsedBefore;
    }
}
