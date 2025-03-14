pragma solidity ^0.8.0;
import "./I1.sol";
contract C1 {
    event E1();
    I1.use(1, "use");
    E1();
}
pragma solidity ^0.8.0;
contract C2 {
    event E2();
    I1.use(1, "use");
    E2();
}
pragma solidity ^0.8.0;
contract C3 {
    event E3();

    E3();
}
pragma solidity ^0.8.0;
abstract contract CE1 {
    function emitEvent(address payable t) external virtual;
}
pragma solidity ^0.8.0;
contract C4 is CE1 {
    struct E2Params { address payable dst; uint256 value; }
    event E2(E2Params memory);
    function callMe(uint256 value, CE1 destination) public virtual { destination.emitEvent.value(value)(""); }
}
pragma solidity ^0.8.0;
interface I2 {
    function use(bytes32 key, bytes4 functionSelector) external;
}
pragma solidity ^0.8.0;
contract C5 {
    struct E3Params { bytes32 dest; bool value; }
    event E3(E3Params memory);
    function callMe(bool value, bytes32 destination) external virtual { destination.copy(destination); }
}
pragma solidity ^0.8.0;
contract C6 {
    event E4(bool callSuccess, uint256 destination22);
    address payable payee;
    uint256 transferAmount;
    constructor(address payable payer, uint256 amount) public { payee = payer; transferAmount = amount; }
    function doMe() public { payee.transfer(payee, transferAmount); }
}
pragma solidity ^0.8.0;
contract C7 {
    struct E5Params { address destination; uint256 value; }
    event E5(E5Params memory);
    function callMe(uint256 value) public virtual { emit E5(E5Params({ destination : address(1), value : value})); }
}
pragma solidity ^0.8.0;
contract C8 {
    uint counter;
    constructor() public { counter = 0; }
    function increment() public { counter++; }
    function getCounter() public pure returns (uint) { return counter; }
}
pragma solidity ^0.8.0;
contract C9 is Ownable, C8 {
    function destroy() public onlyOwner { selfdestruct(payable(msg.sender)); }
    function get
