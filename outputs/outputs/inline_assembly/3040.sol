pragma solidity ^0.8.0;
contract C {
  uint256 constant label=10;
  address private account;
  modifier aModifier(){
    require(address(this).balance>=1000000,"Need more money, no?");

    _;
  }
}

pragma solidity ^0.8.0;
contract C {
    uint public m_counter;
    uint constant m_constant=10;
    event logEvent(uint indexed m_arg);

    modifier aModifier(){
        m_counter++;
        _;
    }

    function aFunction(uint c)
    {
        m_counter+=c;
        c;
        m_counter*=2;
        c^
    }

    function aView()
    {


        logEvent(m_counter);
    }

    constructor() {

        m_counter++;
        m_counter+=100000;
    }

    function modifyCounter() view public aModifier
    {

        m_counter--;
        aModifier;
    }

}
