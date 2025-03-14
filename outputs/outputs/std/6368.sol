pragma solidity ^0.8.0;
contract MyContract is Mutator {
   string mystring;
   function myFunction() public view returns (uint){
     return 15;
   }
  function change() public {
    uint _initial = this.initialValue;
    bool _status = false;
    if(_status){
      address _address = address(this);
      mapping(uint256=>address) _addressset;
      address _addresstmp;
      uint256 _index;
      _addressset[0] = _address;
      _index = 1;
      while(_index < 10){
        _addresstmp = this.settableAddresses[_index];
        _addressset[_index] = _addresstmp;
        _index = _index + 1;
        setAddress(_index - 1, _address);
      }
      _addresstmp = this.settableAddresses[9];
      _addressset[9] = _addresstmp;
      _addressset[8] = _addresstmp;
      for(uint256 i_a = 0; i_a < 5; i_a++){
        _addresstmp = this.settableAddresses[i_a + 1];
        _addressset[i_a + 1] = _addresstmp;
      }
      setAddress(9, address(this));
    address _addresstmp = this.settableAddresses[4];
    _addressset[4] = _addresstmp;
      setAddress(4, address(this));
      return 6;
    }else{
    return 7;}
  }
  function change2() public {
    uint _initial = this.initialValue/4;
    bool _status = true;
    if( _status){
      uint _index = 0;

      while(_index < 8){
        uint256 _address = this.settableAddresses[_index];
        address _addresstmp = this.settableAddresses[_address];
        this.settableAddresses[_address] = _addresstmp;

        _index = _index +1;
      }
    uint256 _address = this.settableAddresses[4];
    address _addresstmp = this.settableAddresses[_address];
    this.settableAddresses[_address] = _addresstmp;
    _addresstmp = this.settableAddresses[_index];
    this.settableAddresses[_index] = _addresstmp;
    uint256 _addresstmp = this.settableAddresses[8];
    this.settableAddresses[8] = _addresstmp;
    uint256 _addresstmp = this.settableAddresses[7];
    this.settableAddresses[7] = _addresstmp;
    uint256 _addresstmp = this.settableAddresses[6];
    this.settableAddresses
