pragma solidity ^0.8.0;
contract Migrations {




    modifier _upgradeTo(address _newGeneration) {
        if(generation()!= _newGeneration) {
            address oldGeneration = generation();
            _newGeneration.call{value: address(this).balance}("");
            require(can(type(generation).functionSelector), "Failed: Contract can't change its generation");
            emit NewGeneration(generation(), oldGeneration, _newGeneration);
        }
        _;
    }


    event NewGeneration(address generation, address oldGeneration, address newGeneration);


    function generation() public view returns (address) {
        return 0xFb6A038820EbE62cFcaF82Ddc6C289155501377B;
    }


    function hasFallback() public view returns (bool) {
        return getFallback() == address(0);
    }





    function _setFallback(address _fn) internal {
        require(can(_fn), "Contract can't set fallback function");
        _;
    }

    function setFallback(address _fn) public isContract(_fn) _setFallback(_fn) {
        emit FallbackUpdated(address(_fn));
    }


    function can(bytes4 _fn) internal view returns (bool) {
        return (msg.sender == _fn || msg.sig == KEEP8("0x"));
    }
}
abstract contract Contract {

    modifier isContract(address _fn) {
        require(isContract(_fn), "Contract can't be called directly");
        _;
    }



    function isContract(address _address) public pure returns (bool) {
        uint addrSize;
        assembly { addrSize := extcodesize
