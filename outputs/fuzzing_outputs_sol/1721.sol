pragma solidity ^0.8.0;
contract A {
   fallback function callWithFallback( bytes calldata ) external payable returns (bool);
}
contract B is A {
   function f ( bytes memory ) public pure override returns (bool){
   }
}
contract C is B {

   function fallback( bytes memory  ) public payable override returns (bool) {
   }
}
contract D {
   function a ( bytes memory ) public pure returns (bool) {
   }
   function b ( bytes memory ) public pure virtual returns (bool) {
   }
   function callWithFallback( bytes calldata ) external payable returns (bool) {
      bytes memory msgData = "Hello World!";
      ( uint64 _ ) = abi.decode( msgData, ( uint64 ) );
      require( d() == 1000 );
      require( b( ) );
      require( b( abi.encode( msgData ) ) );
   }
   function d() public pure virtual returns (uint) {
      return 1000;
    }
}
contract E is D {
   fallback function callWithFallback( bytes calldata ) external payable returns (bool) {
      bytes memory msgData = "Hello World!";
      ( uint64 _ ) = abi.decode( msgData, ( uint64 ) );
      if( d() == 1000 ) {
         return true;
      }
   }
}
