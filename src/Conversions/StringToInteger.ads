pragma Warnings (Off, "*array aggregate*");

-- with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
-- with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
-- with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package StringToInteger is
   
   type ConversionRecord is record
      
      ConversionSuccessful : Boolean;
      Number : Integer;
      
   end record;
      
   function NormalString
     (StringExtern : in String)
      return ConversionRecord;
   
private
   
   NumbersOnly : Boolean;
   
   ConversionNotPossible : constant ConversionRecord := (
                                                         ConversionSuccessful => False,
                                                         Number               => 0
                                                        );

end StringToInteger;
