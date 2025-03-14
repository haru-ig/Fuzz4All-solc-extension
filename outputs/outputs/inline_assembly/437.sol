pragma solidity ^0.8.0;
contract SemanticallyEquivalentM15 {
    bool b1;
    bool b2;
    constructor () public { this.b1 = true; }
    function modifier() public {
        b2=true;
        _;
        b2=false;
    }
    function f() public {
        if(b1) {
            if (b2) {
                emit Log(msg.sender, "", "");
            }
        }
    }
    event Log(address value1, string value2, string value3);
}

pragma solidity ^0.8.0;
interface IERC103 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IERC193 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IContractManager {
    function addContract(address addr) external;
    function removeContract(address addr) external;
}
contract SimpleContract {
    address contractManager ;


    constructor(address addr) public {
        contractManager = addr;
        emit Message();
    }
    event Message();
    modifier IsContract() {
        require(msg.sender == contractManager, "Not AContract");
        _;
    }
    function addContract(address addr) public onlyIsContract IsContract {
        contractManager = addr;
    }
    function removeContract(address addr) public IsContract {
        contractManager = address(0);
    }
}
contract Example {
    function a(address a) public pure virtual returns(bytes4 b){
        if (a == address(this)) {
            return type(ContractManager).interfaceId;
        }
        return bytes4(0);
    }
}<fim_middle>contract Example {
    struct State {
        address lastCallAddress;
        uint16 lastCallDepth;
        uint16 lastCallDepthReturn;
        uint lastIndexCallStorage;
    }
    State storage state;
    address private contractManager;
    modifier onlyIsContract() {
        require(contractManager == msg.sender, "Only a contract");
        _;
    }
    modifier IsContract() {
        require(msg.sender == contractManager, "Contract doesn't support contractId");
        _;
    }
    function() public payable {
        state.lastIndexCallStorage = uint(0xdeadbeef);
        state.lastCallAddress = msg.sender;
    }
    uint256 _g;
    function f() public IsContract {
        _g = uint(abi.encodeWithSignature("a(address)"));
        state.lastCallDepth = state.lastCallDepth + uint(1);
        require(_g == state._g, "Bad signature");
        state.lastIndexCallStorage = uint(77);
        address
