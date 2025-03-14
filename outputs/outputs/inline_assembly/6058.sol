pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        values[1] += x;
        x += y;
        y += x;
    }
}
address addrAddress;
function main() public{
    addrAddress = msg.sender;
}
contract MutatedSemanticallyEquivalentAssemblyExample7 {
    uint256 value = 0;

    constructor() public {
        value = value.sub(addrAddress);
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    event SomeEvent(uint x);

    uint256 count;

    constructor() public {
        count = 0;
    }

    function add(uint x) public {
        uint z = 0;

        count = count.sub(x);
        count = count.add(1);
        emit SomeEvent(count);
        z.sub(count);
        z = z.add(count);
        count = x;
    }
}
