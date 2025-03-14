pragma solidity ^0.8.0;
contract Mutator {



    modifier onlyFrom(address wallet) {

      require(msg.sender == wallet);
      _
    }





    function callMeIfAddressValid(address _address) public payable returns (uint64) {


      if (_address!= address(0)) {


        throw;
      }


      return 2;
    }

    function Mut(uint a)
    public {
        Mutator.onlyFrom(msg.sender) {
            Mutator.Mut(a);
        }
    }
}

pragma solidity ^0.8.0;
contract Mutator {



    modifier onlyFrom(address wallet) {

      require(msg.sender == wallet);
      _
    }

    function callMeIfAddressValid(address _address)
    public payable
    onlyFrom(msg.sender)

    except_contract {

        throw;
    }

    function Mut(uint a)
    public {
        callMeIfAddressValid(msg.sender);
        Mutator.Mut(a);
    }
}
