pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping(uint=>uint) mapping2;
    function setX(uint _x) public{
        mapping2[x] = _x;
    }
}
contract ContractX
{
    bytes32 public contract1 = 'contract1';
    bytes32 public contract2 = 'contract2';
    bytes32 public contract3 = 'contract3';
    mapping(address=>bool) public approvedContracts;
    mapping(bytes32=>bool) public approvedContractsByName;

    contract C{
        event SetX(uint _x);
        function setX(uint _x) public{
            emit SetX(_x);
        }
    }
    C public c;
    mapping(uint=>bool) internal mappingUser;

    function allowCreationOfContracts(address _addr) public
    {
        approvedContracts[_addr] = true;
        if(!approvedContracts[_addr]){
            approvedContracts[_addr] = true;
            _addr.send(0);
        }
    }

    function deleteContract(address _addr) public
    {
        approvedContracts[_addr] = false;
    }

    function allowNewContracts(address _addr) public
    {
        approvedContractsByName[_addr] = true;
        if(!approvedContractsByName[_addr]){
            approvedContractsByName[_addr] = true;
            _addr.send(0);
        }
    }

    function deleteNewContract(address _addr) public
    {
        approvedContractsByName[_addr] = false;
    }

    function createContract(address _addr) public
    {
        approvedContracts[_addr] = true;
        if(c.x == 33 ||!approvedContracts[_addr]){
            approvedContracts[_addr] = true;
            c = C(address(new C()));
            c.setX(1);
            if(!c.x){
                approvedContracts[_addr] = false;
            }
        }
    }

    function deleteContractByAddress(address _addr) public
    {
        approvedContracts[_addr] = false;
    }

    function assignSmartContract(address _addr) public
    {
        c = C(msg.sender);
    }

    function deleteContractBySmartContract() public
    {
        c = C(address(0));
    }

    function createContractByName(address _addr) public
    {
        if(!approvedContractsByName[_addr]){
            approvedContractsByName[_addr] = true;
            _addr.send(0);
        }
    }

    function deleteContractByName(address _addr) public
    {
        approvedContractsByName[_addr] = false;
    }

    function allowNewContractsByName(address _addr) public
    {
        approvedContractsByName[_addr] = true;
        if(!approvedContractsByName[_addr]){
            approvedContractsByName[_addr] = true;
