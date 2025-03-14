pragma solidity ^0.8.0;
contract L113 {
             struct Foo {
                uint256 _id;
                mapping(address => bool) _isBanned;
            }

            uint256 x;
            mapping(address => uint256) _balance;

            address admin;
            mapping(address => bool) public  _hasWon;

            event Banned(address indexed sender, uint256 indexed chainId);

            function banChain(uint256 chainId) public {
               _hasWon[msg.sender] = true;
               _isBanned[msg.sender][chainId] = true;
                emit Banned(msg.sender, chainId);
            }

            function payout() public {
                require(_hasWon[msg.sender]);
                uint256 payoutValue = 0.04 * x;
                _balance[msg.sender] += payoutValue;
                msg.sender.transfer(payoutValue);
                _hasWon[msg.sender] = false;
            }
        }
address admin = 0xa0b06faEfb5d5b9cF2f0C3A2E097F1488a6AE82e;
L113 public contractAddress = L113(address(this));
contract AddressResolver {
    function getContractAddress(string memory contractName) public returns (address)
    {
        return addressByName[contractName];
    }
    mapping(string => address) public addressByName;
}
function main() public {
     address contractInstance = contractAddress.getContractAddress("L13");
     println("contract instance is : ", contractInstance);

     address deployed = contractAddress.getContractAddress("AddressResolver");
     println("my contract address is : ", deployed);

     contractAddress.getContractAddress("L10").add1();
     L10 public contractAddress2 = L10(address(this));
 }
