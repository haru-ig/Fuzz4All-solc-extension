pragma solidity ^0.8.0;
interface IArray2 {
    function append(uint ) external returns (uint);
    function appendTo(uint, address, uint ) external returns (uint );
    function compare( uint, uint) external view returns (bool);
    function compareUnsigned( uint, uint  ) external view returns (bool);
    function get( uint, uint  ) external view returns (uint );
    function getAddressOf( uint, uint  ) external view returns (address);
    function maximum( uint , uint  ) external view returns (uint );
    function minimum( uint , uint  ) external view returns (uint );
    function rotate1( uint  ) external returns (uint );
    function rotate2( uint  ) external returns (uint );
    function subtract( uint, uint) external returns (uint );
    function subtractFrom( uint, uint, uint ) external returns (uint );
    function updateAddressOf( uint, address, uint ) external returns (uint );
    function updateAddressOf( uint, uint, address ) external returns (uint );
}

pragma solidity ^0.8.0;
interface IArray6 {
    function append(uint ) external returns (uint);
    function appendTo( uint, address, uint, uint ) external returns (uint );
    function appendTo( uint, address ) external returns (uint );
    function compare( uint, uint) external view returns (bool);
    function compareUnsigned( uint, uint  ) external view returns (bool);
    function get( uint, uint, uint, uint, uint  ) external view returns (uint );
    function getAddressOf( uint, uint, uint, address, uint  ) external view returns (address);
    function maximum( uint , uint  ) external view returns (uint );
    function minimum( uint , uint  ) external view returns (uint );
    function rotate1( uint  ) external returns (uint );
    function rotate2( uint  ) external returns (uint );
    function subtract( uint, uint) external returns (uint );
    function subtractFrom( uint, uint, uint ) external returns (uint );
    function updateAddressOf( uint, address, uint, uint, uint  ) external returns (uint );
    function updateAddressOf( uint, uint , uint, address ) external returns (uint );
}
