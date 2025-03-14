pragma solidity ^0.8.0;

contract Hello {

    function hello(string memory name) public {
        if (name == "Mary") {
            contract mutator is Mutator {
                function modify() public {
                    msg.sender.modify();
                }
            }
            contract caller is ContractMutator {
                constructor() public {

                }
            }
            contract consumer is Consumer {
                constructor(string memory name_) public {
                    name = name_;
                }
            }
            caller.hello("Mary");
            mutator.modify();
        } else {
            emit msg.sender();
        }
    }
}
