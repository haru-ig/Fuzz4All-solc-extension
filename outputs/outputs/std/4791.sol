pragma solidity ^0.8.0;
contract GMutated {
  address[] internal p;
  constructor () {
    for(uint i=0;i<10;i++){
      p.push(address(0));
      p[p.length-1]=address(0);
    }
  }
}

pragma solidity ^0.8.0;
contract GMutated2 {
  constructor () {
    for(uint i=0;i<10;i++);
  }
}
