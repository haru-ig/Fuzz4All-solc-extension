pragma solidity ^0.8.0;
library Mutant2 {
    event Transfer(address indexed from, address indexed to, uint tokens);
    uint public totalSupply = 0;
    modifier isApproved(address approved, address token) {
        require(checkApproval(token));
        _;
    }
    modifier isApprovedWithToken(addressapproved) {
            require(b==true);
            _;
    }
    function () external payable {};
    function checkApproval(address __contract) internal view returns (bool) {
        uint token = balanceOf(__contract);
        return approvedFor(__contract, token);
    }
    function add(uint __amount) public isApprovedWithToken {
        totalSupply += __amount;
        emit Transfer(address(0), msg.sender, __amount);
    }
    function approvedFor(address __contract, uint token) private view returns (bool ok) {
        ok=_contractTo(__contract).totalApprove(__contract, token);
    }
    function balanceOf(address __contract) public view returns (uint b) {
        return _allowance(__contract, address(this), msg.sender);
    }
    function _allowance(address __contract, address _to, address _from) private view returns (uint allowance) {
        bytes memory _abi;
        (bytes1 codeSeparator) = abi.encodeWithSignature("fn codeSeparator() external pure returns(bytes1)");
        if(keccak256(abi.encodePacked(codeSeparator))==keccak256(_allowance.selector)) {
            (_abi) = _contractTo(__contract).codeSeparator();
            allowance = decodeUint(_abi);
        } else {
            allowance = uint(-1);
        }
    }
    function _contractTo(address __contract) internal pure returns (Mutant1 m) {
        return m=Mutant1(address(eval $__contract));
    }
    function decodeUint(bytes memory _bytes) private pure returns (uint x) {
        if (abi.decode(_bytes, (uint[1])))[0]!= 4294967295) {
            (x, ) = abi.decode(_bytes, (uint[1]));
            ( ) = abi.decode(_bytes, (uint[1]));
        } else { (,, ) = abi.decode(_bytes, (uint[3])); }
    }
    function balanceOfAddress(address _owner)
        public
        view
        returns (uint)
    {
        return balanceOf(_addressTo(__owner));
    }
    function _addressTo(address _address) internal pure returns (address m) {
        return m = address(uint(uint160(_address)));
    }
}
