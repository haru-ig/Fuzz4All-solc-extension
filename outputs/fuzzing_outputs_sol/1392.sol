pragma solidity ^0.8.0;
contract MutationExample{
    bytes32 mutationBytes32;
    mapping(bytes32 => bool) mappings;
    address owner;
    bool modified;
    function setup() public {
        owner = block.origin;
        modified = false;
    }
    function mutation(bytes32 funcSignature) public modifies owner {
        mutationBytes32 = funcSignature;
        mappings[funcSignature] = true;
    }
    function change() public payable {
        require(address(this).balance >= 2 ether, "!No Ether!");
        uint newBalance = address(this).balance - 2 ether;
        uint balance = owner.call{value: newBalance}('');
        require(mappings[mutationBytes32], "!Cannot set!");
        owner.transfer(newBalance);
        require(owner.balance == newBalance, "!Wrong balance!");
        require(modified, "!Modified!");
    }
    function revert() public {
        require(owner.call{value: 2 ether}('') == 0, "!Reverted!");
        require(!modified, "!Didn't revert!");
    }
    function getBack() public view returns (address) {
        return address(this);
    }
}

pragma solidity ^0.8.0;
contract MultipleModifierFackedExample{
    bytes32 methodBytes32;
    mapping(address => bytes32) methods;
    mapping(address => bool) modified;
    address owner;
    bytes32[] bytes32Methods;

    function setup() public {
        owner = block.origin;
        modified[address(this)] = true;
    }
    function modifiers(bytes32 _method) public {
        methodBytes32 = _method;
        bytes32Methods.push(_method);
    }
    modifier onlyMethod(bytes32 _method) {
        bytes32 _method2 = _method;
        if (!(methods[_method2])) revert();
        _;
    }
    function method() public onlyMethod(methodBytes32) {
        require(modified[message.sender], "!Failed.");
        (,uint fee) = IERC20(IERC20(uint(0x6D670E21c78901F98D116a4Be346CB05359b7c0A))).transferFrom(address(this), message.sender, 1 ether, "");
        modified[address(this)] = false;
        address payable receiver = msg.sender;
        emit Log(msg.sender, methodBytes32, string(abi.encodePacked(uint256(fee)))));
        require(receiver.transfer(fee), "!Failed.");
    }
    function change() public payable {
        require(address(this).balance >= 2 ether, "!No Ether!");
        uint newBalance = address(this).balance - 2 ether;
       uint balance = owner.call{value: newBalance}('');
        methods[message.sender] = methodBytes32;
        require(modified[message.sender], "!Failed.");
