pragma solidity ^0.8.0;
contract MutationEquivalence
{
    function run() public {
        MutationEquivalence2 _m02 = new MutationEquivalence2();
    }
    modifier foo(address) {
      _;
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence5
{
    address _address1;
    address _address2;

    function run(address memory _address1_, address memory _address2_) public mutation{
        _address1_ = _address2_;

        foo(_address1_);
        foo(_address2_);
    }

    function mutated(address _address1_){

        _address1_<><><>foo(_address1_);
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence3
{
    function run(uint256[] memory a) public mutation
    {
        a[1] = a.length;
    }
}

pragma solidity ^0.8.0;
contract mutation
{
    function run() public mutation {
        bytes memory _byte;
        _byte = "";
    }

    function modified(bytes memory _byte_){
        bytes32 _byte32;
        _byte32 = bytes32(_byte_);

        return bytes32(_byte_)+3;
    }
}
