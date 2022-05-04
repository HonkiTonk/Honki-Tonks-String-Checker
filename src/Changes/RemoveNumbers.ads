pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package RemoveNumbers is
   
   function UnboundedString
     (UnboundedStringExtern : in Unbounded_String)
      return Unbounded_String;

   function NormalString
     (StringExtern : in String)
      return String;
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Unbounded_Wide_String)
      return Unbounded_Wide_String;

   function WideString
     (WideStringExtern : in Wide_String)
      return Wide_String;
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Unbounded_Wide_Wide_String)
      return Unbounded_Wide_Wide_String;

   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Wide_Wide_String;
   
private
   
   NewString : Unbounded_String;
   NewWideString : Unbounded_Wide_String;
   NewWideWideString : Unbounded_Wide_Wide_String;

end RemoveNumbers;
