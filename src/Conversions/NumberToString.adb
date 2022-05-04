pragma Warnings (Off, "*array aggregate*");

with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings.Wide_Fixed; use Ada.Strings.Wide_Fixed;
with Ada.Strings.Wide_Wide_Fixed; use Ada.Strings.Wide_Wide_Fixed;

-- Like the standard library 'Image commands, but for numbers >= zero, the leading space is also removed.
package body NumberToString is
   
   function UnboundedString
     (NumberExtern : in UnboundedNumber)
      return Unbounded_String
   is begin
      
      if
        NumberExtern >= 0
      then
         return To_Unbounded_String (Source => Trim (Source => NumberExtern'Image,
                                                     Side   => Left));
                                     
      else
         return To_Unbounded_String (Source => NumberExtern'Image);
      end if;
      
   end UnboundedString;
   
   

   function NormalString
     (NumberExtern : in NormalNumber)
      return String
   is begin
      
      if
        NumberExtern >= 0
      then
         return Trim (Source => NumberExtern'Image,
                      Side   => Left);
         
      else
         return NumberExtern'Image;
      end if;
      
   end NormalString;
   
   
   
   function UnboundedWideString
     (NumberExtern : in UnboundedWideNumber)
      return Unbounded_Wide_String
   is begin
      
      if
        NumberExtern >= 0
      then
         return To_Unbounded_Wide_String (Source => Trim (Source => NumberExtern'Wide_Image,
                                                          Side   => Left));
                                     
      else
         return To_Unbounded_Wide_String (Source => NumberExtern'Wide_Image);
      end if;
      
   end UnboundedWideString;
   
   

   function WideString
     (NumberExtern : in WideNumber)
      return Wide_String
   is begin
      
      if
        NumberExtern >= 0
      then
         return Trim (Source => NumberExtern'Wide_Image,
                      Side   => Left);
         
      else
         return NumberExtern'Wide_Image;
      end if;
      
   end WideString;
   
   
   
   function UnboundedWideWideString
     (NumberExtern : in UnboundedWideWideNumber)
      return Unbounded_Wide_Wide_String
   is begin
      
      if
        NumberExtern >= 0
      then
         return To_Unbounded_Wide_Wide_String (Source => Trim (Source => NumberExtern'Wide_Wide_Image,
                                                               Side   => Left));
         
      else
         return To_Unbounded_Wide_Wide_String (Source => NumberExtern'Wide_Wide_Image);
      end if;
      
   end UnboundedWideWideString;
   
   

   function WideWideString
     (NumberExtern : in WideWideNumber)
      return Wide_Wide_String
   is begin
      
      if
        NumberExtern >= 0
      then
         return Trim (Source => NumberExtern'Wide_Wide_Image,
                      Side   => Left);
         
      else
         return NumberExtern'Wide_Wide_Image;
      end if;
      
   end WideWideString;

end NumberToString;
