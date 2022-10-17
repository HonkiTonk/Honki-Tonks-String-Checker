pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

private with Ada.Strings.Fixed;

package StringToInteger is
   
   type ConversionRecord is record
      
      ConversionSuccessful : Boolean;
      Number : Integer;
      
   end record;
   
   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return ConversionRecord;
      
   function NormalString
     (StringExtern : in String)
      return ConversionRecord;
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return ConversionRecord;
      
   function WideString
     (WideStringExtern : in Wide_String)
      return ConversionRecord;
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return ConversionRecord;
      
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return ConversionRecord;
   
private
   
   NegativeNumber : Boolean;
   
   StringBegin : Natural;
   LengthString : Natural;
   
   MaximumValue : constant String := Ada.Strings.Fixed.Trim (Source => Integer'Last'Image,
                                                             Side   => Ada.Strings.Left);
   MinimumValue : constant String := Integer'First'Image;
   
   EndPositiveString : constant Positive := MaximumValue'Length;
   EndNegativeString : constant Positive := MinimumValue'Length;
   
   ConversionNotPossible : constant ConversionRecord := (
                                                         ConversionSuccessful => False,
                                                         Number               => 0
                                                        );
   
end StringToInteger;
