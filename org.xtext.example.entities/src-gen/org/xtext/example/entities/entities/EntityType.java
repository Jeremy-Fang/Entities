/**
 * generated by Xtext 2.22.0
 */
package org.xtext.example.entities.entities;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Entity Type</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.example.entities.entities.EntityType#getEntity <em>Entity</em>}</li>
 * </ul>
 *
 * @see org.xtext.example.entities.entities.EntitiesPackage#getEntityType()
 * @model
 * @generated
 */
public interface EntityType extends ElementType
{
  /**
   * Returns the value of the '<em><b>Entity</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Entity</em>' reference.
   * @see #setEntity(Entity)
   * @see org.xtext.example.entities.entities.EntitiesPackage#getEntityType_Entity()
   * @model
   * @generated
   */
  Entity getEntity();

  /**
   * Sets the value of the '{@link org.xtext.example.entities.entities.EntityType#getEntity <em>Entity</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Entity</em>' reference.
   * @see #getEntity()
   * @generated
   */
  void setEntity(Entity value);

} // EntityType
