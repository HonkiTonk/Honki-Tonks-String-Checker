pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package ContainsOnlyNumbers is

   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return Boolean;

   function NormalString
     (StringExtern : in String)
      return Boolean;
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return Boolean;
   
   function WideString
     (WideStringExtern : in Wide_String)
      return Boolean;
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return Boolean;
   
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Boolean;
   
end ContainsOnlyNumbers;
