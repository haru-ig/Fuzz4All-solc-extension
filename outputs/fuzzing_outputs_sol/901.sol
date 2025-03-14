pragma solidity ^0.8.0;
contract Seller {
    address public addr;

        address public fallbackAddress;
        address public otherAddress;

    receive () external payable {
        fallbackAddress.transfer(msg.value);
    }

        function payfallback () external {
        fallbackAddress.transfer(msg.value);
    }


        contract GoodSeller {
            receive() external payable {
                this.fallbackAddress.transfer(msg.value);
            }
            fallback () external payable {
                require(true);
                fallbackAddress.transfer(msg.value);
            }
        }
}

pragma solidity ^0.8.0;
contract Buyer {
    address public addr;
    address public fallbackAddress;

    fallback () external payable {
        fallbackAddress.transfer(msg.value);
    }

        function payfallback () external {
        fallbackAddress.transfer(msg.value);
    }

        function buy () public payable {
        require(address(this).balance >= msg.value);
        fallbackAddress.transfer(msg.value);
    }


        contract BadSeller {
            receive() external payable {
                this.fallbackAddress.transfer(msg.value);
            }
            fallback () external payable {
                require(true);
                fallbackAddress.transfer(msg.value);
            }
        }
}
