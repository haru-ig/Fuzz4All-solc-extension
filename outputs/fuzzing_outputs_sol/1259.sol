pragma solidity ^0.8.0;
contract CallModifierEquivalenceModified is ModifierEquivalenceModified {
        address[] public addresses;
        mapping(address => uint) public amounts;

        function receiveExtra(uint _w) public payable {
            amounts[msg.sender] += _w;
        }

        function run() public {
            for (uint i = 0; i < addresses.length; i++) {
                addresses[i].transfer(amounts[addresses[i]]);
            }
        }
}

pragma solidity ^0.8.0;
contract Caller extends CallModifierEquivalenceModified {
        address public recipient;

        constructor() {
            recipient = msg.sender;
        }

        function call() public {
            amount[recipient] += 10;
        }
}

pragma solidity ^0.8.0;
contract CallerEquivalenceModified is ModifierEquivalenceModified {
        bytes32 internal myKey;

        uint internal amount;


        uint internal mykey;

        constructor(bytes memory _data) {
            myKey = bytes32(keccak256(_data));
            bytes32 myKeyHash = keccak256(abi.encodePacked(myKey));
            mykey = bytesToUint256((bytes memory)abi.decode(keccak256(_data), (bytes32[](0))), (uint256[](0))));
        }

        function run() public {
            CallModifierEquivalenceModified(msg.sender).run();
        }

        function call() public payable {
            CallModifierEquivalenceModified(msg.sender).receiveExtra(amount);
        }

        function setMyKey() public {
            uint keyHash = bytesToUint256(abi.encodePacked(myKey));
            mykey = uint(keyHash);
        }

        function getAmount() public view returns(uint){
            return amount;
        }

        function getMykey() public view returns(uint){
            return mykey;
        }

        function setAmount(uint _balance) external {
            amount = _balance;
        }

        function getMyKey() public view returns(bytes32){
            return myKey;
        }

}
