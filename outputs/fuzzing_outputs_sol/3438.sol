pragma solidity ^0.8.0;
contract MutatedCaller {
    function sendWithoutFallback() public payable {
        assembly {
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            pay(0x0)
        }
        contract MyContract is MutatedCaller {
            function sendWithoutFallback() public payable {
                assembly {

                    pop(0x14)
                }
            }
        }
        Migrations.migrate(address(this));
    }
    function sendWithFallback() public payable {
        assembly {

            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            receive()
        }
        contract MyContract is MutatedCaller {
            function sendWithFallback() public payable {
                assembly {
                    let x
                    mstore(add(x, 0x40), 0x14)
                    push(0x0)
                    let n
                    mstore(add(n, 0x40), 0x14)
                    mstore(0x40, 0x0)
                }
                Migrations.migrate(address(this));
            }
        }
        Migrations.migrate(address(this));
    }
}
