pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package NumberToString is

   generic type UnboundedNumber is range <>;
      
   function UnboundedString
     (NumberExtern : in UnboundedNumber)
      return Unbounded_String;
   
   generic type NormalNumber is range <>;
   
   function NormalString
     (NumberExtern : in NormalNumber)
      return String;
   
   generic type UnboundedWideNumber is range <>;
   
   function UnboundedWideString
     (NumberExtern : in UnboundedWideNumber)
      return Unbounded_Wide_String;
   
   generic type WideNumber is range <>;
     
   function WideString
     (NumberExtern : in WideNumber)
      return Wide_String;
   
   generic type UnboundedWideWideNumber is range <>;
   
   function UnboundedWideWideString
     (NumberExtern : in UnboundedWideWideNumber)
      return Unbounded_Wide_Wide_String;
   
   generic type WideWideNumber is range <>;
   
   function WideWideString
     (NumberExtern : in WideWideNumber)
      return Wide_Wide_String;

end NumberToString;
