//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ArtigoPessoa
    {
        public System.Guid id { get; set; }
        public Nullable<System.Guid> idArtigo { get; set; }
        public Nullable<System.Guid> idPessoa { get; set; }
        public Nullable<System.DateTime> createdOn { get; set; }
        public Nullable<System.DateTime> removeOn { get; set; }
        public Nullable<System.Guid> createBy { get; set; }
    
        public virtual Artigo Artigo { get; set; }
        public virtual Pessoa Pessoa { get; set; }
    }
}
